-- AUTO-GENERATED from antlr/grammars-v4 lpc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LpcParser
%options package=lpg.grammars.lpc
%options template=dtParserTemplateF.gi
%options import_terminals=LpcLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    lpc_program
%End

%Rules
    lpc_program ::= program

    program ::= program defination possible_semi_colon | $empty

    possible_semi_colon ::= SEMI | $empty

    defination ::= function_defination
           | data_type name_list SEMI
           | inheritance
           | type_decl
           | modifier_change

    function_defination ::= data_type optional_star identifier LPAREN argument RPAREN block_or_semi

    modifier_change ::= type_modifier_list COLON

    type_modifier_list ::= TypeModifier type_modifier_list | $empty

    type_decl ::= type_modifier_list ClassKw identifier LBRACE member_list RBRACE

    member_list ::= member_list data_type member_name_list SEMI | $empty

    member_name_list ::= member_name
           | member_name COMMA member_name_list

    member_name ::= optional_star identifier

    name_list ::= new_name
           | new_name COMMA name_list

    new_name ::= optional_star identifier
           | optional_star identifier Assign expr0

    expr0 ::= expr4 Assign expr0
           | expr0 Question expr0 Colon expr0
           | expr0 OrOr expr0
           | expr0 AndAnd expr0
           | expr0 Or expr0
           | expr0 Caret expr0
           | expr0 And expr0
           | expr0 Equal expr0
           | expr0 NotEqual expr0
           | expr0 Compare expr0
           | expr0 LT expr0
           | expr0 LeftShift expr0
           | expr0 RightShift expr0
           | expr0 grp_1 expr0
           | expr0 grp_2 expr0
           | cast expr0
           | PlusPlus expr4
           | MinusMinus expr4
           | Not expr0
           | TILDE expr0
           | MINUS expr0
           | expr4 PlusPlus
           | expr4 MinusMinus
           | expr4
           | sscanf
           | parse_command
           | time_expression
           | Number
           | Real

    time_expression ::= TimeExpression expr_or_block

    expr_or_block ::= block
           | LPAREN comma_expr RPAREN

    comma_expr ::= expr0
           | comma_expr COMMA expr0

    parse_command ::= ParseCommand LPAREN expr0 COMMA expr0 COMMA expr0 lvalue_list RPAREN

    sscanf ::= SScanf LPAREN expr0 COMMA expr0 lvalue_list RPAREN

    lvalue_list ::= COMMA expr4 lvalue_list | $empty

    cast ::= LPAREN basic_type optional_star RPAREN

    basic_type ::= atomic_type

    atomic_type ::= BasicType
           | ClassKw DefinedName

    expr4 ::= function_call
           | expr4 function_arrow_call
           | DefinedName
           | Identifier
           | Parameter
           | DOLLAR LPAREN comma_expr RPAREN
           | expr4 Arrow identifier
           | expr4 LBRACKET comma_expr Range LT comma_expr RBRACKET
           | expr4 LBRACKET comma_expr Range comma_expr RBRACKET
           | expr4 LBRACKET LT comma_expr Range comma_expr RBRACKET
           | expr4 LBRACKET LT comma_expr Range LT comma_expr RBRACKET
           | expr4 LBRACKET comma_expr Range RBRACKET
           | expr4 LBRACKET LT comma_expr Range RBRACKET
           | expr4 LBRACKET LT comma_expr RBRACKET
           | expr4 LBRACKET comma_expr RBRACKET
           | string
           | CharacterConstant
           | LPAREN comma_expr RPAREN
           | catch_statement
           | BasicType LPAREN argument RPAREN block
           | FunctionOpen comma_expr COLON RPAREN
           | MappingOpen expr_list3 RBRACKET RPAREN
           | ArrayOpen expr_list RBRACE RPAREN

    catch_statement ::= Catch expr_or_block

    expr_list ::= expr_list2
           | expr_list2 COMMA

    expr_list3 ::= expr_list4
           | expr_list4 COMMA

    expr_list4 ::= assoc_pair
           | expr_list4 COMMA assoc_pair

    assoc_pair ::= expr0 COLON expr0

    expr_list2 ::= expr_list_node
           | expr_list2 COMMA expr_list_node

    expr_list_node ::= expr0
           | expr0 Ellipsis

    string ::= string_con2

    string_con2 ::= String
           | string_con2 String

    string_con1 ::= string_con2
           | LPAREN string_con1 RPAREN
           | string_con1 PLUS string_con1

    function_call ::= efun_override LPAREN expr_list RPAREN
           | New LPAREN expr_list RPAREN
           | New LPAREN ClassKw DefinedName opt_class_init RPAREN
           | DefinedName LPAREN expr_list RPAREN
           | function_name_call
           | function_arrow_call
           | LPAREN STAR comma_expr RPAREN LPAREN expr_list RPAREN

    function_name_call ::= function_name LPAREN expr_list RPAREN

    function_arrow_call ::= Arrow identifier LPAREN expr_list RPAREN

    function_name ::= Identifier
           | ColonColon identifier
           | BasicType ColonColon identifier
           | identifier ColonColon identifier

    opt_class_init ::= opt_class_init COMMA class_init | $empty

    class_init ::= identifier COLON expr0

    efun_override ::= Efun ColonColon identifier
           | Efun ColonColon New

    block_or_semi ::= block
           | SEMI

    block ::= LBRACE statements RBRACE

    statements ::= statement statements | $empty
           | local_declare_statement statements

    local_declare_statement ::= basic_type local_name_list SEMI

    local_name_list ::= new_local_def
           | new_local_def COMMA local_name_list

    new_local_def ::= optional_star new_local_name
           | optional_star new_local_name Assign expr0

    new_local_name ::= Identifier
           | DefinedName

    statement ::= comma_expr SEMI
           | cond
           | while_statement
           | do_statement
           | switch_statement
           | returnStatement
           | block
           | for_loop
           | foreach_loop
           | SEMI
           | Break SEMI
           | Continue SEMI

    while_statement ::= While LPAREN comma_expr RPAREN statement

    do_statement ::= Do statement While LPAREN comma_expr RPAREN SEMI

    switch_statement ::= Switch LPAREN comma_expr RPAREN LBRACE local_declarations case_statement switch_block RBRACE

    local_declarations ::= local_declarations basic_type local_name_list SEMI | $empty

    case_statement ::= Case case_label COLON
           | Case case_label Range case_label COLON
           | Default COLON

    switch_block ::= case_statement switch_block | $empty
           | statement switch_block

    case_label ::= constant
           | CharacterConstant
           | string_con1

    constant ::= constant PIPE constant
           | constant CARET constant
           | constant AMP constant
           | constant Equal constant
           | constant NotEqual constant
           | constant Compare constant
           | constant LT constant
           | constant LeftShift constant
           | constant RightShift constant
           | LPAREN constant RPAREN
           | constant STAR constant
           | constant PERCENT constant
           | constant SLASH constant
           | constant MINUS constant
           | constant PLUS constant
           | Number
           | MINUS Number
           | Not Number
           | TILDE Number

    foreach_loop ::= Foreach LPAREN foreach_vars In expr0 RPAREN statement

    foreach_vars ::= foreach_var
           | foreach_var COMMA foreach_var

    for_loop ::= For LPAREN first_for_expr SEMI for_expr SEMI for_expr RPAREN statement

    foreach_var ::= DefinedName
           | single_new_local_def
           | Identifier

    first_for_expr ::= for_expr
           | single_new_local_def_with_init

    single_new_local_def_with_init ::= single_new_local_def Assign expr0

    single_new_local_def ::= basic_type optional_star new_local_name

    for_expr ::= comma_expr

    returnStatement ::= Return SEMI
           | Return comma_expr SEMI

    cond ::= If LPAREN comma_expr RPAREN statement optional_else_part

    optional_else_part ::= Else statement

    argument ::= argument_list
           | argument_list Ellipsis
           | $empty

    argument_list ::= new_arg
           | argument_list COMMA new_arg

    new_arg ::= basic_type optional_star
           | basic_type optional_star new_local_name
           | new_local_name

    inheritance ::= type_modifier_list Inherit string_con1 SEMI

    data_type ::= type_modifier_list opt_basic_type

    opt_basic_type ::= basic_type | $empty

    optional_star ::= STAR | $empty

    identifier ::= DefinedName
           | Identifier

    grp_1 ::= STAR | PERCENT | SLASH

    grp_2 ::= PLUS | MINUS

%End
