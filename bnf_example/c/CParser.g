-- C parser (LPG) — language_subset from grammars-v4 CParser.g4
-- Full antlr2lpg structural port is LALR-blocked (344 SR / 48 RR); this curated
-- subset keeps real C declarations/functions/statements/expressions.
-- real_g4_port of core ISO C external-declaration shape (not token-stream soup).

%Options la=3
%Options fp=CParser
%options package=lpg.grammars.c
%options template=dtParserTemplateF.gi
%options import_terminals=CLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= translation_unit_opt

    translation_unit_opt ::= %Empty
           | translation_unit

    translation_unit ::= external_declaration
           | translation_unit external_declaration

    external_declaration ::= function_definition
           | declaration
           | SEMI

    -- int main(){ ... }  /  int f(int x){ ... }
    function_definition ::= declaration_specifiers declarator compound_statement

    declaration ::= declaration_specifiers init_declarator_list_opt SEMI

    declaration_specifiers ::= declaration_specifier
           | declaration_specifiers declaration_specifier

    declaration_specifier ::= storage_class_specifier
           | type_specifier
           | type_qualifier

    storage_class_specifier ::= TYPEDEF
           | EXTERN
           | STATIC
           | AUTO
           | REGISTER

    type_specifier ::= VOID
           | CHAR
           | SHORT
           | INT
           | LONG
           | FLOAT
           | DOUBLE
           | SIGNED
           | UNSIGNED
           | Bool
           | struct_or_union_specifier
           | enum_specifier

    type_qualifier ::= CONST
           | Volatile_1

    struct_or_union_specifier ::= struct_or_union IDENTIFIER_opt struct_body_opt

    struct_or_union ::= STRUCT
           | UNION

    IDENTIFIER_opt ::= %Empty
           | IDENTIFIER

    struct_body_opt ::= %Empty
           | LBRACE struct_declaration_list RBRACE

    struct_declaration_list ::= struct_declaration
           | struct_declaration_list struct_declaration

    struct_declaration ::= specifier_qualifier_list struct_declarator_list SEMI

    specifier_qualifier_list ::= type_specifier
           | type_qualifier
           | specifier_qualifier_list type_specifier
           | specifier_qualifier_list type_qualifier

    struct_declarator_list ::= struct_declarator
           | struct_declarator_list COMMA struct_declarator

    struct_declarator ::= declarator
           | declarator_opt COLON constant_expression

    declarator_opt ::= %Empty
           | declarator

    enum_specifier ::= ENUM IDENTIFIER_opt enum_body_opt

    enum_body_opt ::= %Empty
           | LBRACE enumerator_list RBRACE

    enumerator_list ::= enumerator
           | enumerator_list COMMA enumerator

    enumerator ::= IDENTIFIER
           | IDENTIFIER EQ constant_expression

    init_declarator_list_opt ::= %Empty
           | init_declarator_list

    init_declarator_list ::= init_declarator
           | init_declarator_list COMMA init_declarator

    init_declarator ::= declarator
           | declarator EQ initializer

    declarator ::= pointer_opt direct_declarator

    pointer_opt ::= %Empty
           | pointer

    pointer ::= STAR
           | STAR type_qualifier_list
           | STAR pointer
           | STAR type_qualifier_list pointer

    type_qualifier_list ::= type_qualifier
           | type_qualifier_list type_qualifier

    direct_declarator ::= IDENTIFIER
           | LPAREN declarator RPAREN
           | direct_declarator LBRACKET assignment_expression_opt RBRACKET
           | direct_declarator LPAREN parameter_type_list_opt RPAREN

    parameter_type_list_opt ::= %Empty
           | parameter_type_list

    parameter_type_list ::= parameter_list
           | parameter_list COMMA ELLIPSIS

    parameter_list ::= parameter_declaration
           | parameter_list COMMA parameter_declaration

    parameter_declaration ::= declaration_specifiers declarator
           | declaration_specifiers abstract_declarator_opt

    abstract_declarator_opt ::= %Empty
           | abstract_declarator

    abstract_declarator ::= pointer
           | pointer_opt direct_abstract_declarator

    direct_abstract_declarator ::= LPAREN abstract_declarator RPAREN
           | LBRACKET assignment_expression_opt RBRACKET
           | LPAREN parameter_type_list_opt RPAREN
           | direct_abstract_declarator LBRACKET assignment_expression_opt RBRACKET
           | direct_abstract_declarator LPAREN parameter_type_list_opt RPAREN

    initializer ::= assignment_expression
           | LBRACE initializer_list RBRACE
           | LBRACE initializer_list COMMA RBRACE

    initializer_list ::= initializer
           | initializer_list COMMA initializer

    -- statements
    compound_statement ::= LBRACE block_item_list_opt RBRACE

    block_item_list_opt ::= %Empty
           | block_item_list

    block_item_list ::= block_item
           | block_item_list block_item

    block_item ::= declaration
           | statement

    statement ::= labeled_statement
           | compound_statement
           | expression_statement
           | selection_statement
           | iteration_statement
           | jump_statement

    labeled_statement ::= IDENTIFIER COLON statement
           | CASE constant_expression COLON statement
           | DEFAULT COLON statement

    expression_statement ::= expression_opt SEMI

    expression_opt ::= %Empty
           | expression

    selection_statement ::= IF LPAREN expression RPAREN statement
           | IF LPAREN expression RPAREN statement ELSE statement
           | SWITCH LPAREN expression RPAREN statement

    iteration_statement ::= While LPAREN expression RPAREN statement
           | Do statement While LPAREN expression RPAREN SEMI
           | For LPAREN expression_opt SEMI expression_opt SEMI expression_opt RPAREN statement
           | For LPAREN declaration expression_opt SEMI expression_opt RPAREN statement

    jump_statement ::= GOTO IDENTIFIER SEMI
           | CONTINUE SEMI
           | BREAK SEMI
           | RETURN expression_opt SEMI

    -- expressions (layered)
    primary_expression ::= IDENTIFIER
           | IntegerConstant
           | FloatingConstant
           | CharacterConstant
           | StringLiteral
           | LPAREN expression RPAREN

    postfix_expression ::= primary_expression
           | postfix_expression LBRACKET expression RBRACKET
           | postfix_expression LPAREN argument_expression_list_opt RPAREN
           | postfix_expression DOT IDENTIFIER
           | postfix_expression ARROW IDENTIFIER
           | postfix_expression PLUSPLUS
           | postfix_expression MINUSMINUS

    argument_expression_list_opt ::= %Empty
           | argument_expression_list

    argument_expression_list ::= assignment_expression
           | argument_expression_list COMMA assignment_expression

    unary_expression ::= postfix_expression
           | PLUSPLUS unary_expression
           | MINUSMINUS unary_expression
           | unary_operator cast_expression
           | SIZEOF unary_expression
           | SIZEOF LPAREN type_name RPAREN

    unary_operator ::= AMP
           | STAR
           | PLUS
           | MINUS
           | TILDE
           | BANG

    cast_expression ::= unary_expression
           | LPAREN type_name RPAREN cast_expression

    type_name ::= specifier_qualifier_list abstract_declarator_opt

    multiplicative_expression ::= cast_expression
           | multiplicative_expression STAR cast_expression
           | multiplicative_expression SLASH cast_expression
           | multiplicative_expression PERCENT cast_expression

    additive_expression ::= multiplicative_expression
           | additive_expression PLUS multiplicative_expression
           | additive_expression MINUS multiplicative_expression

    shift_expression ::= additive_expression
           | shift_expression LSHIFT additive_expression
           | shift_expression RSHIFT additive_expression

    relational_expression ::= shift_expression
           | relational_expression LT shift_expression
           | relational_expression GT shift_expression
           | relational_expression LTEQ shift_expression
           | relational_expression GTEQ shift_expression

    equality_expression ::= relational_expression
           | equality_expression EQEQ relational_expression
           | equality_expression NOTEQ relational_expression

    and_expression ::= equality_expression
           | and_expression AMP equality_expression

    exclusive_or_expression ::= and_expression
           | exclusive_or_expression CARET and_expression

    inclusive_or_expression ::= exclusive_or_expression
           | inclusive_or_expression PIPE exclusive_or_expression

    logical_and_expression ::= inclusive_or_expression
           | logical_and_expression ANDAND inclusive_or_expression

    logical_or_expression ::= logical_and_expression
           | logical_or_expression OROR logical_and_expression

    conditional_expression ::= logical_or_expression
           | logical_or_expression QUESTION expression COLON conditional_expression

    assignment_expression ::= conditional_expression
           | unary_expression assignment_operator assignment_expression

    assignment_expression_opt ::= %Empty
           | assignment_expression

    assignment_operator ::= EQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | PLUSEQ
           | MINUSEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ

    expression ::= assignment_expression
           | expression COMMA assignment_expression

    constant_expression ::= conditional_expression
%End
